require 'net/http'
require 'uri'
require 'json'

class LogFormatter
    def self.format_log
        #URLが文字列では処理できないので、URI.parseでURI::HTTPSオブジェクトに変換
        uri = URI.parse('https://samples.jnito.com/access-log.json')
        #Net::HTTP.getを使ってインターネット上のデータを取得
        json = Net::HTTP.get(uri)
        #取得したJSON文字列をRubyのオブジェクト(ハッシュを要素とする配列)に、変換
        #ハッシュキーは文字列がデフォルトなので、symbolize_names: trueでシンボルにする
        log_data = JSON.parse(json, symbolize_names: true)

        #配列の各要素(今回はハッシュ)で繰り返し処理
        log_data.map do |log|
            #配列の各要素のパターンマッチで、メッセージを形成する
            case log
                in {request_id:, path:, status: 404 | 500 => status, error:}
                    "[ERROR] request_id=#{request_id}, path=#{path}, status=#{status}, error=#{error}"
                in {request_id:, path:, duration: 1000.. => duration}
                    "[WARN] request_id=#{request_id}, path=#{path}, duration=#{duration}"
                in {request_id:, path:}
                    "[OK] request_id=#{request_id}, path=#{path}"
            end
        end
    end
end

