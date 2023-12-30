.class public Lcom/jiabaida/little_elephant/util/SampleGattAttributes;
.super Ljava/lang/Object;
.source "SampleGattAttributes.java"


# static fields
.field public static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

.field public static HEART_RATE_MEASUREMENT:Ljava/lang/String;

.field private static attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "00002a37-0000-1000-8000-00805f9b34fb"

    .line 26
    sput-object v1, Lcom/jiabaida/little_elephant/util/SampleGattAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    .line 27
    sput-object v1, Lcom/jiabaida/little_elephant/util/SampleGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    const-string v1, "0000180d-0000-1000-8000-00805f9b34fb"

    const-string v2, "Heart Rate Service"

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/jiabaida/little_elephant/util/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "0000180a-0000-1000-8000-00805f9b34fb"

    const-string v2, "Device Information Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/jiabaida/little_elephant/util/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/jiabaida/little_elephant/util/SampleGattAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    const-string v2, "Heart Rate Measurement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/jiabaida/little_elephant/util/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "00002a29-0000-1000-8000-00805f9b34fb"

    const-string v2, "Manufacturer Name String"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/jiabaida/little_elephant/util/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method
