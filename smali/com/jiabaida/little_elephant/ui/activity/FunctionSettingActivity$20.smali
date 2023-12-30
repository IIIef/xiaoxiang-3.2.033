.class Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;
.super Landroid/os/Handler;
.source "FunctionSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 538
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 539
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x754d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7918

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_0

    goto/16 :goto_13

    .line 639
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 640
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_13

    .line 645
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$4400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_13

    .line 543
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 545
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    const/4 v1, 0x3

    aget-byte v2, p1, v1

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const/4 v4, 0x4

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 546
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    const/4 v2, 0x5

    aget-byte v5, p1, v2

    shl-int/2addr v5, v3

    const/4 v6, 0x6

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    invoke-static {v0, v5}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$002(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 548
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DD 5A FA fun:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v7}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  ntc:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v7}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x30

    invoke-static {v0, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 551
    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    .line 553
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    .line 556
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 557
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 559
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v4

    const/4 v7, 0x1

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$502(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 561
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    const/4 v8, 0x0

    if-ne v3, v7, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 563
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v4

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$702(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 564
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 567
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v4

    shr-int/lit8 v3, v3, 0x2

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 568
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 571
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v4

    shr-int/2addr v3, v1

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1102(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 573
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 574
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v0

    const v3, 0x7f0d00d7

    const v9, 0x7f0d011d

    if-ne v0, v7, :cond_6

    .line 575
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-virtual {v10, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    new-instance v10, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-virtual {v11, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v7, v3, v8, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v10, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-virtual {v10, v9}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9, v7, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 581
    :cond_6
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v10, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-virtual {v10, v9}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    new-instance v10, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-virtual {v11, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v8, v3, v8, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v10, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-virtual {v10, v9}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v7, v9, v7, v5}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    :goto_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v4

    shr-int/2addr v3, v4

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1302(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 587
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 589
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v4

    shr-int/2addr v3, v2

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1502(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 590
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 592
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v4

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1702(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 593
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 595
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v4

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1902(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 596
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 598
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v1

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2102(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 599
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_b

    const/4 v3, 0x1

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 601
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v1

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2302(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 602
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_c

    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 604
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x2

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2502(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 605
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 608
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v6

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2702(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 609
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_e

    const/4 v3, 0x1

    goto :goto_b

    :cond_e
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 611
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v6

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2902(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 612
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v3

    if-ne v3, v7, :cond_f

    const/4 v3, 0x1

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 614
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v3, p1, v6

    shr-int/lit8 v2, v3, 0x5

    and-int/2addr v2, v7

    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3102(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 615
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v2

    if-ne v2, v7, :cond_10

    const/4 v2, 0x1

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 617
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v2, p1, v6

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3302(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 618
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v2

    if-ne v2, v7, :cond_11

    const/4 v2, 0x1

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 620
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v2, p1, v6

    shr-int/lit8 v1, v2, 0x3

    and-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3502(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 621
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v1

    if-ne v1, v7, :cond_12

    const/4 v1, 0x1

    goto :goto_f

    :cond_12
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 623
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v1, p1, v6

    shr-int/lit8 v1, v1, 0x2

    and-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3702(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 624
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3700(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v1

    if-ne v1, v7, :cond_13

    const/4 v1, 0x1

    goto :goto_10

    :cond_13
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 626
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte v1, p1, v6

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3902(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 627
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$4000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$3900(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v1

    if-ne v1, v7, :cond_14

    const/4 v1, 0x1

    goto :goto_11

    :cond_14
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 629
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    aget-byte p1, p1, v6

    and-int/2addr p1, v7

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$4102(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 630
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result v0

    if-ne v0, v7, :cond_15

    goto :goto_12

    :cond_15
    const/4 v7, 0x0

    :goto_12
    invoke-virtual {p1, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 632
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$4300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V

    .line 633
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$20;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->hideLoading()V

    :goto_13
    return-void
.end method
