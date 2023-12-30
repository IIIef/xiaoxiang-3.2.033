.class Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory$1;
.super Ljava/lang/Object;
.source "ResourceLeakDetectorFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;


# direct methods
.method constructor <init>(Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory$1;->this$0:Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    const-string v0, "io.netty.customResourceLeakDetector"

    .line 109
    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
