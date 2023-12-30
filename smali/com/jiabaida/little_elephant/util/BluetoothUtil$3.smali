.class Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V
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

    .line 336
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->val$data:[B

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 5

    .line 373
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 374
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 375
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

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->val$data:[B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
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
    .locals 8

    .line 340
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

    const-string v0, "BluetoothUtil"

    invoke-static {v0, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->access$000(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)Landroid/os/CountDownTimer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 343
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->access$000(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)Landroid/os/CountDownTimer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 345
    :cond_0
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    new-instance v7, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x1f4

    move-object v0, v7

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3$1;-><init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;JJ[B)V

    invoke-static {p2, v7}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->access$002(Lcom/jiabaida/little_elephant/util/BluetoothUtil;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 362
    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->access$000(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)Landroid/os/CountDownTimer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 364
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 365
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 366
    sget-object v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001--justWrite\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-static {p3, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n---mDataQueue\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$3;->val$data:[B

    array-length v4, v3

    invoke-static {v3, v4}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "justWrite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-static {p3, p1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BleActivity"

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
