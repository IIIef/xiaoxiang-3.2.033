.class Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;
.super Landroid/os/Handler;
.source "SystemSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 227
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 228
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7536

    const-string v1, ""

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p1, v0, :cond_8

    const/16 v0, 0x7537

    if-eq p1, v0, :cond_7

    const/16 v0, 0x754c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x754f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x75a1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7918

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_2

    const/16 v0, 0x75a9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x75aa

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v3

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 248
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v2, p1

    invoke-static {v2, v3, v1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v3

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 242
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v2, p1

    invoke-static {v2, v3, v1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 288
    :cond_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 284
    :cond_3
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 253
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v3

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 255
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v2, p1

    invoke-static {v2, v3, v1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 262
    :cond_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v3

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 264
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v2, p1

    invoke-static {v2, v3, v1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 270
    :cond_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v3

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 271
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v1, p1

    const/4 p1, 0x1

    invoke-static {v1, v2, p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    goto :goto_0

    .line 275
    :cond_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v3

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    .line 276
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_8
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v3

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    .line 280
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
