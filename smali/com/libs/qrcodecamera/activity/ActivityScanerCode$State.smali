.class final enum Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;
.super Ljava/lang/Enum;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/libs/qrcodecamera/activity/ActivityScanerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

.field public static final enum DONE:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

.field public static final enum PREVIEW:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

.field public static final enum SUCCESS:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;


# direct methods
.method private static synthetic $values()[Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 602
    sget-object v1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->PREVIEW:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->SUCCESS:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->DONE:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 604
    new-instance v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->PREVIEW:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 606
    new-instance v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->SUCCESS:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 608
    new-instance v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->DONE:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 602
    invoke-static {}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->$values()[Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    move-result-object v0

    sput-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->$VALUES:[Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 602
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;
    .locals 1

    .line 602
    const-class v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    return-object p0
.end method

.method public static values()[Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;
    .locals 1

    .line 602
    sget-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->$VALUES:[Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    invoke-virtual {v0}, [Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    return-object v0
.end method
