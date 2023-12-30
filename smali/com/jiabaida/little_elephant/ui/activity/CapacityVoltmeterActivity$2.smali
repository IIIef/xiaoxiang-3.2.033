.class Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;
.super Landroid/os/Handler;
.source "CapacityVoltmeterActivity.java"


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

    .line 228
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 231
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 232
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7532

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, ""

    const/16 v6, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7552

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/4 v9, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x759a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7918

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 288
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 292
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 256
    aget-byte v0, p1, v4

    shl-int/2addr v0, v6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    .line 258
    aget-byte v2, p1, v2

    shl-int/2addr v2, v6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v2, v1

    .line 260
    aget-byte v1, p1, v9

    shl-int/2addr v1, v6

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    .line 262
    aget-byte v3, p1, v8

    shl-int/2addr v3, v6

    aget-byte v4, p1, v7

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    const/16 v4, 0xb

    .line 264
    aget-byte v4, p1, v4

    shl-int/2addr v4, v6

    const/16 v7, 0xc

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    const/16 v7, 0xd

    .line 266
    aget-byte v7, p1, v7

    shl-int/lit8 v6, v7, 0x8

    const/16 v7, 0xe

    aget-byte p1, p1, v7

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v6, p1

    .line 268
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)V

    goto/16 :goto_0

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 239
    aget-byte v0, p1, v4

    shl-int/2addr v0, v6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    .line 241
    aget-byte v2, p1, v2

    shl-int/2addr v2, v6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v2, v1

    .line 243
    aget-byte v1, p1, v9

    shl-int/2addr v1, v6

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    .line 245
    aget-byte v3, p1, v8

    shl-int/2addr v3, v6

    aget-byte p1, p1, v7

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v3, p1

    .line 247
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 280
    aget-byte v0, p1, v4

    shl-int/2addr v0, v6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    .line 281
    aget-byte v2, p1, v2

    shl-int/2addr v2, v6

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v2, p1

    .line 282
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
