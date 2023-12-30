.class Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;
.super Landroid/os/Handler;
.source "VoltageCalibrationActivity.java"


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

    .line 155
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 158
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 159
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 174
    :pswitch_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getVoltageCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 176
    :goto_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getVoltageCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    .line 179
    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getVoltageCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    iget v4, v4, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v4, v4, v6

    const-string v6, "mV"

    invoke-direct {v2, p1, v3, v4, v6}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;-><init>(ILjava/lang/String;FLjava/lang/String;)V

    .line 178
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v5

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    new-instance v0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$702(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;)Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    .line 184
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 186
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->initData()V

    goto :goto_1

    .line 169
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    const v0, 0x7f0d0118

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->hideLoading()V

    goto :goto_1

    .line 161
    :pswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$102(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;I)I

    .line 162
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    const v0, 0x7f0d0116

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->hideLoading()V

    .line 165
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x4e23

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
