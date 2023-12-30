.class Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$3;
.super Ljava/lang/Object;
.source "UnBindDeviceActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->startUnBind(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

.field final synthetic val$macAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$3;->val$macAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public leftBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 5

    const-string p1, ""

    .line 140
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    const/16 v2, 0x80

    .line 142
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 143
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v3

    const-string v4, "sp_key_user_token"

    invoke-virtual {v3, v4}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "macAddr"

    .line 145
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$3;->val$macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 146
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "txnNo"

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showLoading()V

    .line 151
    new-instance p2, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {p2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 152
    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 155
    invoke-virtual {p2, v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 156
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->hideLoading()V

    :goto_0
    return-void
.end method
