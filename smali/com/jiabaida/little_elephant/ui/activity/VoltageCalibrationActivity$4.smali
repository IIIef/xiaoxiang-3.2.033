.class Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;
.super Ljava/lang/Object;
.source "VoltageCalibrationActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 196
    iget-char p2, p1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    if-nez p2, :cond_0

    .line 197
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$108(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)I

    goto :goto_0

    .line 199
    :cond_0
    iget-char p1, p1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 200
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$108(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)I

    .line 201
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 202
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x4e21

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x4e22

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$108(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)I

    :goto_0
    return-void
.end method
