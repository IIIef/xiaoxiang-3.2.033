.class public Lcom/inuker/bluetooth/library/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5_12(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    .line 15
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 21
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 22
    array-length v0, p0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 24
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x6

    add-int/lit8 v0, v0, 0x6

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    sget-object p0, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
