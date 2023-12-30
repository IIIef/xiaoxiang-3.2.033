.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$14;
.super Ljava/lang/Object;
.source "NowFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/socket/SocketClineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->checkBleDeviceBind(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 1268
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$14;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clineFaile(ILjava/lang/String;)V
    .locals 0

    .line 1277
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$14;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    return-void
.end method

.method public clineSuccess(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestTimeOut(Ljava/lang/String;)V
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$14;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    .line 1284
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$14;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showDefaultMsg(Ljava/lang/String;)V

    return-void
.end method
