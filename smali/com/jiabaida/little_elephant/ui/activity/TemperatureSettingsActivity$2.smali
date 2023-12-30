.class Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;
.super Landroid/os/Handler;
.source "TemperatureSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 237
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 238
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7538

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, ""

    const/16 v9, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x755c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7918

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 327
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 292
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 295
    aget-byte v0, p1, v7

    shl-int/2addr v0, v9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v0, v6

    .line 297
    aget-byte v5, p1, v5

    shl-int/2addr v5, v9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v5, v4

    .line 299
    aget-byte v3, p1, v3

    shl-int/2addr v3, v9

    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 301
    aget-byte v2, p1, v2

    shl-int/2addr v2, v9

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v2, p1

    .line 304
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1, v5}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1802(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 305
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1902(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 306
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1, v2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2002(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 307
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1, v3}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2102(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 309
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V

    goto/16 :goto_0

    .line 244
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 245
    aget-byte v0, p1, v7

    shl-int/2addr v0, v9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v0, v6

    .line 247
    aget-byte v5, p1, v5

    shl-int/2addr v5, v9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v5, v4

    .line 250
    aget-byte v3, p1, v3

    shl-int/2addr v3, v9

    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 252
    aget-byte v2, p1, v2

    shl-int/2addr v2, v9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v2, v1

    const/16 v1, 0xb

    .line 255
    aget-byte v1, p1, v1

    shl-int/2addr v1, v9

    const/16 v4, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    const/16 v4, 0xd

    .line 257
    aget-byte v4, p1, v4

    shl-int/2addr v4, v9

    const/16 v6, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    const/16 v6, 0xf

    .line 259
    aget-byte v6, p1, v6

    shl-int/2addr v6, v9

    const/16 v7, 0x10

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    const/16 v7, 0x11

    .line 261
    aget-byte v7, p1, v7

    shl-int/2addr v7, v9

    const/16 v9, 0x12

    aget-byte p1, p1, v9

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v7, p1

    .line 263
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {p1, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$102(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 264
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {p1, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$202(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 266
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {p1, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 267
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {p1, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$402(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 269
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {p1, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$502(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 270
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {p1, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$602(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 272
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {p1, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$702(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 273
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {v7}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {p1, v9}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$802(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;I)I

    .line 276
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/jiabaida/little_elephant/entity/BleCommand;->TemperatureConversion(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
