.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;
.super Landroid/os/Handler;
.source "ProtectParamsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 913
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 914
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7532

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq p1, v0, :cond_8

    const/16 v0, 0x7540

    const/16 v4, 0x10

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v9, 0xa

    const-string v10, ""

    if-eq p1, v0, :cond_7

    const/16 v0, 0x7556

    if-eq p1, v0, :cond_6

    const/16 v0, 0x755a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7560

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7918

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 1032
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_2

    .line 1038
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_2

    .line 970
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 972
    aget-byte v0, p1, v1

    shl-int/2addr v0, v3

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 974
    aget-byte v1, p1, v7

    shl-int/2addr v1, v3

    aget-byte v2, p1, v8

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 976
    aget-byte v2, p1, v6

    shl-int/2addr v2, v3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    .line 978
    aget-byte v4, p1, v5

    shl-int/lit8 v3, v4, 0x8

    aget-byte p1, p1, v9

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v3, p1

    .line 980
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v3}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 981
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3202(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 982
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3302(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 983
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3402(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 985
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1000
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 1002
    aget-byte v0, p1, v2

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-static {v0, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 1010
    aget-byte v3, p1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v1

    .line 1011
    aget-byte p1, p1, v2

    shr-int/2addr p1, v2

    and-int/2addr p1, v1

    .line 1012
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1, v3}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$502(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 1013
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$602(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 1014
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    .line 1015
    invoke-virtual {v2, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    goto :goto_0

    .line 1017
    :cond_4
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    .line 1019
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    .line 1020
    invoke-virtual {v5, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    goto :goto_1

    .line 1022
    :cond_5
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->setItemSelect(Z)V

    .line 1023
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelays:[I

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellUVDelays:[I

    aget p1, v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u786c\u4ef6\u65f6\u5ef6:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xzx"

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 993
    :cond_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$3900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 994
    aget-byte v0, p1, v1

    shl-int/2addr v0, v3

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 995
    aget-byte v1, p1, v7

    shl-int/2addr v1, v3

    aget-byte p1, p1, v8

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    .line 996
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 920
    :cond_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 922
    aget-byte v0, p1, v1

    shl-int/2addr v0, v3

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xa

    .line 924
    aget-byte v1, p1, v7

    shl-int/2addr v1, v3

    aget-byte v2, p1, v8

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    .line 926
    aget-byte v2, p1, v6

    shl-int/2addr v2, v3

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0xa

    .line 928
    aget-byte v5, p1, v5

    shl-int/2addr v5, v3

    aget-byte v6, p1, v9

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0xa

    const/16 v6, 0xb

    .line 931
    aget-byte v6, p1, v6

    shl-int/2addr v6, v3

    const/16 v7, 0xc

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    const/16 v7, 0xd

    .line 933
    aget-byte v7, p1, v7

    shl-int/2addr v7, v3

    const/16 v8, 0xe

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    const/16 v8, 0xf

    .line 935
    aget-byte v8, p1, v8

    shl-int/2addr v8, v3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v8, v4

    const/16 v4, 0x11

    .line 937
    aget-byte v4, p1, v4

    shl-int/lit8 v3, v4, 0x8

    const/16 v4, 0x12

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v3, p1

    .line 940
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v6}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1402(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 941
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v7}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1502(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 944
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v8}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1602(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 945
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v3}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1702(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 948
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1802(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 949
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1902(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 951
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2002(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 952
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, v5}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 955
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 916
    :cond_8
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v1

    shl-int/2addr v0, v3

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1102(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;F)F

    :goto_2
    return-void
.end method
