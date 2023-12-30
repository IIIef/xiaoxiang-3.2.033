.class Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;
.super Landroid/os/CountDownTimer;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->onWriteSuccess(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;

.field final synthetic val$justWrite:[B


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;JJ[B)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;->this$1:Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;

    iput-object p6, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;->val$justWrite:[B

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 353
    sget-boolean v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->penetrateData:Z

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 356
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 357
    sget-object v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001--\u91cd\u65b0justWrite\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;->val$justWrite:[B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n---\u91cd\u65b0\u53d1\u9001mDataQueue\uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;->this$1:Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->val$data:[B

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;->this$1:Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->val$data:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;->this$1:Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    sget-object v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mbleDevice:Lcom/clj/fastble/data/BleDevice;

    sget-object v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeData(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
