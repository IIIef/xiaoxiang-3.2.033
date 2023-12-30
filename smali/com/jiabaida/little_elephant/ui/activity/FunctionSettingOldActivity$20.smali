.class Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;
.super Landroid/os/Handler;
.source "FunctionSettingOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 420
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 421
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_c

    const/4 v2, 0x2

    const/16 v3, 0x7918

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_2

    const/16 v0, 0x7d01

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d02

    if-eq p1, v0, :cond_0

    goto/16 :goto_11

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setWriteMode()V

    .line 463
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;Z)Z

    .line 464
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_11

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setWriteMode()V

    .line 458
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;Z)Z

    .line 459
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_11

    .line 467
    :cond_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_11

    .line 446
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getNtc1()I

    move-result v2

    if-ne v2, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 447
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getNtc2()I

    move-result v2

    if-ne v2, v1, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 448
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getNtc3()I

    move-result v2

    if-ne v2, v1, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 449
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getNtc4()I

    move-result v2

    if-ne v2, v1, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 450
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getNtc5()I

    move-result v2

    if-ne v2, v1, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 451
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getNtc6()I

    move-result v2

    if-ne v2, v1, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 452
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getNtc7()I

    move-result v2

    if-ne v2, v1, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 453
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getNtc8()I

    move-result v2

    if-ne v2, v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 454
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_11

    .line 423
    :cond_c
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getSwitchEnable()I

    move-result v2

    if-ne v2, v1, :cond_d

    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 424
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getLoadCheckEnable()I

    move-result v2

    if-ne v2, v1, :cond_e

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 425
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getBalanceEnable()I

    move-result v2

    if-ne v2, v1, :cond_f

    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 426
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getBalanceMode()I

    move-result v2

    if-ne v2, v1, :cond_10

    const/4 v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    :goto_a
    invoke-static {p1, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$602(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;I)I

    .line 427
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 428
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)I

    move-result p1

    const v2, 0x7f0d00d7

    const v3, 0x7f0d011d

    const-string v4, ""

    if-ne p1, v1, :cond_11

    .line 429
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {v5, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v5, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {v6, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v1, v2, v0, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {v5, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 433
    :cond_11
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {v5, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v5, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {v6, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2, v0, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {v5, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v1, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :goto_b
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getLedEnable()I

    move-result v2

    if-ne v2, v1, :cond_12

    const/4 v2, 0x1

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 439
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getFccLimit()I

    move-result v2

    if-ne v2, v1, :cond_13

    const/4 v2, 0x1

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 440
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getRtcEnable()I

    move-result v2

    if-ne v2, v1, :cond_14

    const/4 v2, 0x1

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 441
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getCurrentLimit()I

    move-result v2

    if-ne v2, v1, :cond_15

    const/4 v2, 0x1

    goto :goto_f

    :cond_15
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 442
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getGpsEnable()I

    move-result v2

    if-ne v2, v1, :cond_16

    const/4 v2, 0x1

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 443
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getBzEnable()I

    move-result v2

    if-ne v2, v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_11
    return-void
.end method
