.class Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$3;
.super Ljava/lang/Object;
.source "CapacityVoltmeterActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 614
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 4

    .line 604
    move-object p2, p1

    check-cast p2, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 605
    iget-object v0, p1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->returnContent:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->returnContent:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 606
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->cmdStart:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->returnContent:[B

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->returnContent:[B

    array-length p1, p1

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->timeHandler:Landroid/os/Handler;

    add-int/lit16 v0, v0, 0x7530

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 609
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)V

    return-void
.end method
