.class public Lcom/jiabaida/little_elephant/app/CustomActivityManager;
.super Ljava/lang/Object;
.source "CustomActivityManager.java"


# static fields
.field public static activities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearAllActivity()V
    .locals 3

    .line 39
    sget-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 40
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public static currentActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 50
    sget-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    sget-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static deleteActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->activities:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-static {v1}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->deleteActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    :cond_1
    return-void
.end method
