.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$8;
.super Ljava/lang/Object;
.source "MainV2Activity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 881
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 882
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->threadResume()V

    :cond_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 6

    const-string p2, ""

    .line 833
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 834
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "command"

    const/16 v3, 0x79

    .line 836
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 840
    :try_start_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    const-string v4, "sp_key_user_token"

    invoke-virtual {v2, v4}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 841
    :try_start_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v4

    const-string v5, "BluetoothMac"

    invoke-virtual {v4, v5}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v2, p2

    .line 843
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 846
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string v4, "token"

    .line 849
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 850
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "macAddr"

    .line 851
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p2, "content"

    .line 853
    move-object v2, p1

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->getResponseStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "data"

    .line 855
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 856
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSTransferCMDEntity;->getTxnNo()Ljava/lang/String;

    move-result-object p1

    const-string p2, "txnNo"

    .line 857
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 862
    new-instance v0, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 863
    invoke-virtual {v0, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 864
    invoke-virtual {v0, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 865
    invoke-virtual {v0, p2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 870
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 873
    :goto_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 874
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->threadResume()V

    :cond_2
    return-void
.end method
