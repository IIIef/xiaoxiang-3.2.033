.class Lcom/jiabaida/little_elephant/entity/ObserverManager$ObserverManagerHolder;
.super Ljava/lang/Object;
.source "ObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/entity/ObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverManagerHolder"
.end annotation


# static fields
.field private static final sObserverManager:Lcom/jiabaida/little_elephant/entity/ObserverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ObserverManager;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ObserverManager;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/entity/ObserverManager$ObserverManagerHolder;->sObserverManager:Lcom/jiabaida/little_elephant/entity/ObserverManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/jiabaida/little_elephant/entity/ObserverManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/jiabaida/little_elephant/entity/ObserverManager$ObserverManagerHolder;->sObserverManager:Lcom/jiabaida/little_elephant/entity/ObserverManager;

    return-object v0
.end method
