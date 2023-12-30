.class Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string p1, ""

    .line 143
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->isChinaSimCard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0167

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->showDefaultMsg(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d016a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sp_key_user_email"

    invoke-virtual {v0, v2, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 160
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "command"

    const/16 v3, 0x66

    .line 162
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "email"

    .line 164
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-static {v4}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "password"

    .line 166
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-static {v4}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 167
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "txnNo"

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->showLoading()V

    .line 172
    new-instance v0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 173
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 176
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 181
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;->hideLoading()V

    :goto_1
    return-void
.end method
