.class Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;
.super Ljava/lang/Object;
.source "VoltageCalibrationActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->initData()V
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

    .line 124
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(ILjava/lang/String;Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;)V
    .locals 2

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 134
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    const/16 v0, 0x1130

    const/16 v1, 0xbb8

    invoke-static {p2, v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$002(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;Z)Z

    .line 135
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 136
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-virtual {p3}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->showLoading()V

    .line 137
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$102(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;I)I

    .line 139
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p3

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 141
    new-instance p3, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    add-int/lit16 p1, p1, 0xb0

    int-to-char p1, p1

    invoke-direct {p3, p1}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;-><init>(C)V

    .line 142
    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setContent([B)V

    .line 143
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 145
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 146
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 147
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0d0189

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "3000~4400"

    aput-object v1, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->showDefaultMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onItemClick(ILcom/jiabaida/little_elephant/entity/ResistanceItemBean;)V
    .locals 0

    return-void
.end method
