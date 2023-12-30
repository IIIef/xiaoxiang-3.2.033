.class Lcom/inuker/bluetooth/library/utils/Task$2;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/utils/Task;->execute(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/utils/Task;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/utils/Task;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/inuker/bluetooth/library/utils/Task$2;->this$0:Lcom/inuker/bluetooth/library/utils/Task;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/utils/Task$2;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/Task$2;->this$0:Lcom/inuker/bluetooth/library/utils/Task;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/utils/Task$2;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/inuker/bluetooth/library/utils/Task;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
