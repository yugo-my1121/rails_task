#ベースとして使用するイメージ名
FROM ruby:3.2.2-alpine

#利用可能なパッケージリストを更新するコマンドを実行
RUN apk update

# パッケージをインストールするコマンドを実行
RUN apk add g++ make postgresql-dev postgresql-client tzdata

# コンテナを起動した時の作業ディレクトリを
WORKDIR /taskleaf

# PC上のGemfilemを.(/scaffold)にコピー
COPY Gemfile .

# RUN gem install erb2slim

# bundle installでgemfileに記述されているgemをインストール
RUN bundle install
