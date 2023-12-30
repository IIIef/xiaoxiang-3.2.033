.class Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XXApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/app/XXApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/app/XXApplication;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/app/XXApplication;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;->this$0:Lcom/jiabaida/little_elephant/app/XXApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 132
    iget-object p2, p0, Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;->this$0:Lcom/jiabaida/little_elephant/app/XXApplication;

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 133
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 134
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->doConnect()V

    .line 137
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0d01a4

    .line 142
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const p2, 0x7f0d01a3

    .line 139
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :cond_2
    iget-object p2, p0, Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;->this$0:Lcom/jiabaida/little_elephant/app/XXApplication;

    const v1, 0x7f0d0085

    invoke-virtual {p2, v1}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
