.class public Lcom/jiabaida/little_elephant/entity/TemperatureBean;
.super Ljava/lang/Object;
.source "TemperatureBean.java"


# instance fields
.field private name:Ljava/lang/String;

.field private number:I

.field private temperature:F


# direct methods
.method public constructor <init>(ILjava/lang/String;F)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->number:I

    .line 26
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->name:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->temperature:F

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->number:I

    return v0
.end method

.method public getTemperature()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->temperature:F

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->number:I

    return-void
.end method

.method public setTemperature(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->temperature:F

    return-void
.end method
