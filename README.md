# README

日本の課題 （ 問題提起 ）
・少子高齢化
・日本全体の自殺率は下がっているが、若者の自殺率（15～24歳）は上昇している。
・労働力不足が叫ばれる中、若者の労働力が自殺によって減っていることは大きな問題。

concept
・若者（高校生以下）の自殺、虐待を止める
・このアプリではイジメ防止だけでなく、環境を変えることを勧める
・障害を持っているのか判断する（転校しても、同じ環境になってしまうのを防ぐため）
・それぞれに合った環境や進路を模索する（フリースクールなども視野に）


※ version 1 として、まず一つの学校で使ってもらう想定でアプリを作成する。


機能
・匿名での通報（画像）　（動画や音声も送信できるようにしたい）
・相談機能（ログイン必須）、管理者と相談（想定ではスクールカウンセラーや他機関）



※管理者のみがusers_roomの一覧を見れるようにする(boolean）



notifyテーブル
・school
・message
・image/video/voice

users_roomテーブル
・user_id

talkテーブル
・users_room_id
・user_id
・message





<% if talk.user.id == current_user.id %>
        <div class = "my-chat">
          <%= raw(talk.message.gsub(/\n/, "<br>"))%>
        </div>
      <% else %>
        <div class = "the_other_person-chat">
          <%= raw(talk.message.gsub(/\n/, "<br>"))%>
        </div>
      <% end %>