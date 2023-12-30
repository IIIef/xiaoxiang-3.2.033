.class Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$7;
.super Ljava/lang/Object;
.source "CapacityVoltmeterOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 776
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 770
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    return-void
.end method
