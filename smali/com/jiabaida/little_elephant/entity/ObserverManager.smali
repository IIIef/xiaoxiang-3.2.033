.class public Lcom/jiabaida/little_elephant/entity/ObserverManager;
.super Ljava/lang/Object;
.source "ObserverManager.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/entity/ObserverManager$ObserverManagerHolder;
    }
.end annotation


# instance fields
.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/ObserverManager;->observers:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/jiabaida/little_elephant/entity/ObserverManager;
    .locals 1

    .line 12
    invoke-static {}, Lcom/jiabaida/little_elephant/entity/ObserverManager$ObserverManagerHolder;->access$000()Lcom/jiabaida/little_elephant/entity/ObserverManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/jiabaida/little_elephant/entity/Observer;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ObserverManager;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteObserver(Lcom/jiabaida/little_elephant/entity/Observer;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ObserverManager;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ObserverManager;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public notifyObserver(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2

    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/ObserverManager;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/ObserverManager;->observers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/Observer;

    .line 38
    invoke-interface {v1, p1}, Lcom/jiabaida/little_elephant/entity/Observer;->disConnected(Lcom/clj/fastble/data/BleDevice;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
