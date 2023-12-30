.class Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9$1;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;

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
    .locals 6

    const-string p1, "sp_key_user_token"

    const-string p2, ""

    .line 311
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 312
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "command"

    const/16 v3, 0x68

    .line 313
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "token"

    .line 314
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 315
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "txnNo"

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v2, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 321
    invoke-virtual {v2, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 324
    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 325
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V

    .line 327
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/util/SPUtils;->remove(Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->access$200(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->hideLoading()V

    :goto_0
    return-void
.end method
