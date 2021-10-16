defmodule HelloWeb.CrawlController do
    use HelloWeb, :controller
    def index(conn, %{"type" => type}) do
        {type_crawl, _remain} = Integer.parse(type)
        result = CrawlData.run(type_crawl)
        json(conn, Enum.reverse(result))
    end
end
