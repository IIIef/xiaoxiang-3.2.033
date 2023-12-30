.class public Lcom/jiabaida/little_elephant/entity/BatteryListNumBean;
.super Ljava/lang/Object;
.source "BatteryListNumBean.java"


# instance fields
.field private name:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BatteryListNumBean;->name:F

    return v0
.end method

.method public setName(I)V
    .locals 0

    int-to-float p1, p1

    .line 23
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BatteryListNumBean;->name:F

    return-void
.end method
