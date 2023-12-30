.class Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;
.super Ljava/lang/Object;
.source "ForgotPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 104
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    const/16 v2, 0x62

    .line 118
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "email"

    .line 119
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const/4 v3, 0x3

    .line 121
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 122
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
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

    .line 124
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->showLoading()V

    .line 129
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 130
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 131
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 132
    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->hideLoading()V

    :goto_0
    return-void
.end method
