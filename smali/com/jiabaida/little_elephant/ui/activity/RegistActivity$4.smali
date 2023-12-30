.class Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;
.super Ljava/lang/Object;
.source "RegistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 139
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "--input:"

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->isChinaSimCard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0167

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->showDefaultMsg(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 152
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d016a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 156
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d016b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_3
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sp_key_user_email"

    invoke-virtual {p1, v1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    const/16 v2, 0x64

    .line 164
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "email"

    .line 165
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->isChinaSimCard()Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "language"

    if-eqz v1, :cond_4

    :try_start_1
    const-string v1, "zh-CN"

    .line 167
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const-string v1, "en-US"

    .line 170
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "password"

    .line 172
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 173
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "txnNo"

    .line 175
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->showLoading()V

    .line 179
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 180
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 181
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 182
    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 189
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->hideLoading()V

    :goto_2
    return-void
.end method
