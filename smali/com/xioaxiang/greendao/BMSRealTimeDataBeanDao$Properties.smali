.class public Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;
.super Ljava/lang/Object;
.source "BMSRealTimeDataBeanDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AvgVoltage:Lorg/greenrobot/greendao/Property;

.field public static final BleMacAddress:Lorg/greenrobot/greendao/Property;

.field public static final CeilingVoltage:Lorg/greenrobot/greendao/Property;

.field public static final ChargeSwitch:Lorg/greenrobot/greendao/Property;

.field public static final CycleIndex:Lorg/greenrobot/greendao/Property;

.field public static final DischargeSwitch:Lorg/greenrobot/greendao/Property;

.field public static final DropoutVoltage:Lorg/greenrobot/greendao/Property;

.field public static final Electricity:Lorg/greenrobot/greendao/Property;

.field public static final EquilibriumStatus:Lorg/greenrobot/greendao/Property;

.field public static final Humidity:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final MinimumVoltage:Lorg/greenrobot/greendao/Property;

.field public static final Power:Lorg/greenrobot/greendao/Property;

.field public static final ProtectStatus:Lorg/greenrobot/greendao/Property;

.field public static final RatedChargingCurrent:Lorg/greenrobot/greendao/Property;

.field public static final RatedChargingVoltage:Lorg/greenrobot/greendao/Property;

.field public static final RatedDischargeCurrent:Lorg/greenrobot/greendao/Property;

.field public static final RatedDischargePower:Lorg/greenrobot/greendao/Property;

.field public static final Soc:Lorg/greenrobot/greendao/Property;

.field public static final SurplusCapacity:Lorg/greenrobot/greendao/Property;

.field public static final Temperatures:Lorg/greenrobot/greendao/Property;

.field public static final TimeDateDec:Lorg/greenrobot/greendao/Property;

.field public static final TimeStamp:Lorg/greenrobot/greendao/Property;

.field public static final TotalVoltage:Lorg/greenrobot/greendao/Property;

.field public static final VoltageSeries:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "id"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    const-string v10, "timeStamp"

    const/4 v11, 0x0

    const-string v12, "TIME_STAMP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->TimeStamp:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Long;

    const/4 v2, 0x2

    const-string v4, "timeDateDec"

    const/4 v5, 0x0

    const-string v6, "TIME_DATE_DEC"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->TimeDateDec:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "bleMacAddress"

    const-string v12, "BLE_MAC_ADDRESS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->BleMacAddress:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    const-string v4, "soc"

    const-string v6, "SOC"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Soc:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    const-string v10, "surplusCapacity"

    const-string v12, "SURPLUS_CAPACITY"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->SurplusCapacity:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    const-string v4, "totalVoltage"

    const-string v6, "TOTAL_VOLTAGE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->TotalVoltage:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x7

    const-string v10, "electricity"

    const-string v12, "ELECTRICITY"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Electricity:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    const-string v4, "power"

    const-string v6, "POWER"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Power:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x9

    const-string v10, "ceilingVoltage"

    const-string v12, "CEILING_VOLTAGE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->CeilingVoltage:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xa

    const-string v4, "minimumVoltage"

    const-string v6, "MINIMUM_VOLTAGE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->MinimumVoltage:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xb

    const-string v10, "avgVoltage"

    const-string v12, "AVG_VOLTAGE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->AvgVoltage:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xc

    const-string v4, "cycleIndex"

    const-string v6, "CYCLE_INDEX"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->CycleIndex:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xd

    const-string v10, "dropoutVoltage"

    const-string v12, "DROPOUT_VOLTAGE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->DropoutVoltage:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xe

    const-string v4, "humidity"

    const-string v6, "HUMIDITY"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Humidity:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xf

    const-string v10, "RatedChargingVoltage"

    const-string v12, "RATED_CHARGING_VOLTAGE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->RatedChargingVoltage:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x10

    const-string v4, "RatedChargingCurrent"

    const-string v6, "RATED_CHARGING_CURRENT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->RatedChargingCurrent:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x11

    const-string v10, "RatedDischargeCurrent"

    const-string v12, "RATED_DISCHARGE_CURRENT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->RatedDischargeCurrent:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x12

    const-string v4, "RatedDischargePower"

    const-string v6, "RATED_DISCHARGE_POWER"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->RatedDischargePower:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x13

    const-string v10, "equilibriumStatus"

    const-string v12, "EQUILIBRIUM_STATUS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->EquilibriumStatus:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x14

    const-string v4, "chargeSwitch"

    const-string v6, "CHARGE_SWITCH"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->ChargeSwitch:Lorg/greenrobot/greendao/Property;

    .line 48
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x15

    const-string v10, "dischargeSwitch"

    const-string v12, "DISCHARGE_SWITCH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->DischargeSwitch:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x16

    const-string v4, "protectStatus"

    const-string v6, "PROTECT_STATUS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->ProtectStatus:Lorg/greenrobot/greendao/Property;

    .line 50
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x17

    const-string v10, "temperatures"

    const-string v12, "TEMPERATURES"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Temperatures:Lorg/greenrobot/greendao/Property;

    .line 51
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x18

    const-string v4, "voltageSeries"

    const-string v6, "VOLTAGE_SERIES"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->VoltageSeries:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
