.class Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$1;
.super Ljava/lang/Object;
.source "UnBindDeviceActivity.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 113
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)V

    return-void
.end method
