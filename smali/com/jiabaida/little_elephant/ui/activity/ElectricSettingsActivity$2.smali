.class Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;
.super Landroid/os/Handler;
.source "ElectricSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 285
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 286
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7548

    const/4 v1, 0x5

    const-string v2, ""

    const/4 v3, 0x3

    const/16 v4, 0xa

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/16 v7, 0x8

    if-eq p1, v0, :cond_b

    const/16 v0, 0x754c

    if-eq p1, v0, :cond_a

    const/16 v0, 0x7558

    const/16 v8, 0x9

    const/4 v9, 0x7

    const/4 v10, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7564

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7918

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 388
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_3

    .line 395
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_3

    .line 370
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 372
    aget-byte v0, p1, v3

    shl-int/2addr v0, v7

    aget-byte v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 374
    aget-byte v1, p1, v1

    shl-int/2addr v1, v7

    aget-byte v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 376
    aget-byte v2, p1, v9

    shl-int/2addr v2, v7

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 378
    aget-byte v3, p1, v8

    shl-int/2addr v3, v7

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v3, p1

    int-to-float p1, v3

    .line 380
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v3

    float-to-double v4, v0

    invoke-static {v4, v5, v10}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v3, v1

    invoke-static {v3, v4, v10}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v1, v2

    invoke-static {v1, v2, v10}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v1, p1

    invoke-static {v1, v2, v10}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 308
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 309
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getIcType()I

    move-result v0

    if-nez v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    aget-byte v1, p1, v5

    const/16 v3, 0x80

    and-int/2addr v1, v3

    const/4 v11, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$802(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;Z)Z

    .line 319
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    aget-byte v1, p1, v5

    and-int/lit8 v1, v1, 0xf

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 322
    :try_start_0
    aget-byte v0, p1, v5

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1002(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 327
    :catch_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    aget-byte v1, p1, v5

    ushr-int/2addr v1, v6

    and-int/2addr v1, v9

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1002(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 329
    :goto_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    aget-byte v1, p1, v6

    and-int/lit8 v1, v1, 0xf

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1102(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 330
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    aget-byte v1, p1, v6

    ushr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 332
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)F

    move-result v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Z

    move-result v2

    xor-int/2addr v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->setCurrentInfo(FZ)V

    .line 334
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)Ljava/util/List;

    .line 335
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)Ljava/util/List;

    .line 336
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)Ljava/util/List;

    .line 337
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)Ljava/util/List;

    .line 339
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Z

    move-result v1

    xor-int/2addr v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 341
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    array-length v1, v1

    sub-int/2addr v1, v11

    if-le v0, v1, :cond_6

    .line 342
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    array-length v1, v1

    sub-int/2addr v1, v11

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 344
    :cond_6
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    array-length v1, v1

    sub-int/2addr v1, v11

    if-le v0, v1, :cond_7

    .line 345
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    array-length v1, v1

    sub-int/2addr v1, v11

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1102(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 347
    :cond_7
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    array-length v1, v1

    sub-int/2addr v1, v11

    if-le v0, v1, :cond_8

    .line 348
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    array-length v1, v1

    sub-int/2addr v1, v11

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1002(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 350
    :cond_8
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    array-length v1, v1

    sub-int/2addr v1, v11

    if-le v0, v1, :cond_9

    .line 351
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    array-length v1, v1

    sub-int/2addr v1, v11

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 354
    :cond_9
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    aget-byte v0, p1, v8

    shl-int/2addr v0, v7

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    int-to-float p1, v0

    .line 364
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v1, p1

    invoke-static {v1, v2, v10}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V

    goto :goto_3

    .line 304
    :cond_a
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v3

    shl-int/2addr v0, v7

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;F)F

    goto :goto_3

    .line 292
    :cond_b
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 294
    aget-byte v0, p1, v3

    shl-int/2addr v0, v7

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0xa

    .line 296
    aget-byte v1, p1, v1

    shl-int/2addr v1, v7

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0xa

    .line 297
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
