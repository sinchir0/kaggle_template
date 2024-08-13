# {{cookiecutter.competition_name}}

## バックグラウンドでの動作
```
cd {{cookiecutter.competition_name}}
# あらかじめ、mutiple_run.sh内に実行したいnotebookを記載する
nohup ./multiple_run.sh &
```

## 動いているかの確認
```
ps aux | grep python
```

## Kill
```
pkill multiple_run
pkill runnb
```

## GitHubからのpull
```
cd {{cookiecutter.competition_name}}
./shell/make_github_key_and_set_email.sh.sh
```

```
以下のリンクで、New SSH Keyを行う
https://github.com/settings/keys
```

```
git pull origin main
```

## git add, commit, push

```
git add -u
git config --global user.email "{{cookiecutter.github_email_address}}"
git commit -m "add"
git push origin main
```

## nbconvertで変換した際に、ログに残るかどうか
- printで出力したものは残る
- notebookの一番最後に実行し、Notebookの機能で出力したものは残らない

## コンペティションデータのダウンロード

### セッティング
- kaggle.jsonをダウンロードする
  - https://www.kaggle.com/settings
- kaggle.jsonをアップロードする
- 適切なパスと権限を付与し、kaggleをinstallする
```
./shell/set_kaggle_api.sh
```

### データのダウンロード
```
./shell/download_competition_data.sh
```

## 環境設定

### zshのインストール
```sh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
sudo apt install zsh
```

### starshipの設定
```sh
# https://starship.rs/ja-JP/guide/
curl -sS https://starship.rs/install.sh | sh
echo "$(starship init zsh)" >> ~/.zshrc
```

### zsh-autosuggestionsの設定
```sh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo 'HISTFILE=~/.zsh_history' >> ~/.zshrc
echo 'HISTSIZE=1000' >> ~/.zshrc
echo 'SAVEHIST=1000' >> ~/.zshrc
echo 'setopt HIST_IGNORE_DUPS' >> ~/.zshrc
echo 'setopt SHARE_HISTORY' >> ~/.zshrc
echo 'setopt INC_APPEND_HISTORY' >> ~/.zshrc
echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
```