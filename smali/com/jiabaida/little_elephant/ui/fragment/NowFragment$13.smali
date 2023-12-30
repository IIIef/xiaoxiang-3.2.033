.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;
.super Ljava/lang/Object;
.source "NowFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;
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

    .line 1241
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 3

    .line 1245
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1502(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1246
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->maxVoltage:F

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1602(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F

    .line 1247
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->minVoltage:F

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1702(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;F)F

    .line 1248
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1800(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)J

    move-result-wide p1

    const-wide/16 v0, 0x1e

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1249
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1900(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    .line 1251
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$13;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$1808(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)J

    return-void
.end method
