.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$7;
.super Ljava/lang/Object;
.source "MainV2Activity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/socket/SocketClineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->checkBluetoothBind(Ljava/lang/String;)V
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

    .line 756
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clineFaile(ILjava/lang/String;)V
    .locals 0

    .line 765
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->hideLoading()V

    return-void
.end method

.method public clineSuccess(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestTimeOut(Ljava/lang/String;)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->hideLoading()V

    .line 772
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->showDefaultMsg(Ljava/lang/String;)V

    return-void
.end method
