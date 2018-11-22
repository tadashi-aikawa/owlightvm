owlightvm
=========

Owl Light VM.

bashとよく使うツールだけで構成されたVagrantfileです。  
Ansible Playbookなどの本格的なものは利用していません。


使い方
------

### 初回起動時

イメージを作成します。

```
$ vagrant up --provision
```

作成したイメージにログインしてから、ユーザとしてprovisioningをします。

```
$ sh user-provision.sh
```

最後に表示されるメッセージは任意で設定します。

もう一度ログインすれば準備完了。


### 設定ファイル

以下のファイルはprovisioning時にホストの設定をそのまま同期します。

* `~/.gowlconfig`
* `~/.ssh`
* `~/.vimrc`

※ OSが異なる場合に設定が微妙に異なるためシンボリックリンクやmountはしていません

もう一度同期したい場合は以下を実行して下さい。

```
$ vagrant provision
```

※ Dockerのインストールだけ毎回走るのでご注意
