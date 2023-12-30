.class Lcom/jiabaida/little_elephant/util/BluetoothUtil$2;
.super Lcom/clj/fastble/callback/BleIndicateCallback;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/BluetoothUtil;->openIndicate(Lcom/clj/fastble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BluetoothUtil$2;->this$0:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleIndicateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged([B)V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "indicate\u63a5\u5230\u901a\u77e5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/entity/BleCommand;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BleActivity"

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIndicateFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    const-string p1, "BleActivity"

    const-string v0, "indicate\u6253\u5f00\u901a\u77e5\u64cd\u4f5c\u6210\u529f: "

    .line 299
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIndicateSuccess()V
    .locals 2

    const-string v0, "BleActivity"

    const-string v1, "indicate\u6253\u5f00\u901a\u77e5\u64cd\u4f5c\u6210\u529f: "

    .line 293
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
