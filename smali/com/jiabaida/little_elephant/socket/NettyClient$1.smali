.class Lcom/jiabaida/little_elephant/socket/NettyClient$1;
.super Ljava/lang/Object;
.source "NettyClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/socket/NettyClient;->doConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/socket/NettyClient;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/socket/NettyClient;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/jiabaida/little_elephant/socket/NettyClient$1;->this$0:Lcom/jiabaida/little_elephant/socket/NettyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/NettyClient$1;->this$0:Lcom/jiabaida/little_elephant/socket/NettyClient;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/socket/NettyClient;->connect()V

    return-void
.end method
