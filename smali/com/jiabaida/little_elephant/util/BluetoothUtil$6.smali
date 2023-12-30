.class Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeData(Ljava/lang/String;Lcom/clj/fastble/data/BleDevice;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;[B)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;->val$data:[B

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 5

    .line 537
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 538
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 539
    sget-object v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001\u6570\u636e\u5230\u8bbe\u5907\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;->val$data:[B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "justWrite err: \u53d1\u9001\u6570\u636e\u5230\u8bbe\u5907\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BleActivity"

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 9

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BleActivity"

    invoke-static {v0, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->access$000(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)Landroid/os/CountDownTimer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 507
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->access$000(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)Landroid/os/CountDownTimer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 509
    :cond_0
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    new-instance v8, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6$1;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x1f4

    move-object v1, v8

    move-object v2, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6$1;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;JJ[B)V

    invoke-static {p2, v8}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->access$002(Lcom/jiabaida/little_elephant/util/BluetoothUtil;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 526
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->access$000(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)Landroid/os/CountDownTimer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 528
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 529
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 530
    sget-object v2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001--justWrite\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-static {p3, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n---mDataQueue\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$6;->val$data:[B

    array-length v5, v4

    invoke-static {v4, v5}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "justWrite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-static {p3, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
