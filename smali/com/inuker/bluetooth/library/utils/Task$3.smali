.class final Lcom/inuker/bluetooth/library/utils/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/utils/Task;->executeDelayed(Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/Executor;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$task:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/inuker/bluetooth/library/utils/Task$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/utils/Task$3;->val$task:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/inuker/bluetooth/library/utils/Task$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/utils/Task$3;->val$task:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
