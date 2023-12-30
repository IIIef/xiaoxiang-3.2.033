.class Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;
.super Ljava/lang/Object;
.source "AddInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 85
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0167

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sp_key_user_email"

    invoke-virtual {p1, v1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    const/16 v2, 0x7e

    .line 98
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "email"

    .line 99
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phone"

    .line 100
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;)Lcom/jiabaida/little_elephant/view/XXEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/view/XXEditText;->getEditTextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 101
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v3

    const-string v4, "sp_key_user_token"

    invoke-virtual {v3, v4}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 102
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
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

    .line 104
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->showLoading()V

    .line 109
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 110
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 111
    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 112
    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/AddInfoActivity;->hideLoading()V

    :goto_0
    return-void
.end method
