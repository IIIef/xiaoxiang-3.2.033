.class public Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "BMSRealTimeDataBeanDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "BMSREAL_TIME_DATA_BEAN"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xioaxiang/greendao/DaoSession;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 66
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"BMSREAL_TIME_DATA_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"TIME_STAMP\" INTEGER NOT NULL ,\"TIME_DATE_DEC\" INTEGER,\"BLE_MAC_ADDRESS\" TEXT,\"SOC\" INTEGER NOT NULL ,\"SURPLUS_CAPACITY\" REAL NOT NULL ,\"TOTAL_VOLTAGE\" REAL NOT NULL ,\"ELECTRICITY\" REAL NOT NULL ,\"POWER\" REAL NOT NULL ,\"CEILING_VOLTAGE\" REAL NOT NULL ,\"MINIMUM_VOLTAGE\" REAL NOT NULL ,\"AVG_VOLTAGE\" REAL NOT NULL ,\"CYCLE_INDEX\" INTEGER NOT NULL ,\"DROPOUT_VOLTAGE\" REAL NOT NULL ,\"HUMIDITY\" REAL NOT NULL ,\"RATED_CHARGING_VOLTAGE\" REAL NOT NULL ,\"RATED_CHARGING_CURRENT\" REAL NOT NULL ,\"RATED_DISCHARGE_CURRENT\" REAL NOT NULL ,\"RATED_DISCHARGE_POWER\" REAL NOT NULL ,\"EQUILIBRIUM_STATUS\" INTEGER NOT NULL ,\"CHARGE_SWITCH\" INTEGER NOT NULL ,\"DISCHARGE_SWITCH\" INTEGER NOT NULL ,\"PROTECT_STATUS\" INTEGER NOT NULL ,\"TEMPERATURES\" TEXT,\"VOLTAGE_SERIES\" TEXT);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"BMSREAL_TIME_DATA_BEAN\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)V
    .locals 4

    .line 152
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 154
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    .line 158
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 160
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTimeDateDec()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 162
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 165
    :cond_1
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 167
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x5

    .line 169
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getSoc()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 170
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getSurplusCapacity()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/4 v0, 0x7

    .line 171
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTotalVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x8

    .line 172
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getElectricity()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x9

    .line 173
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getPower()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0xa

    .line 174
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getCeilingVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0xb

    .line 175
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getMinimumVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0xc

    .line 176
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getAvgVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0xd

    .line 177
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getCycleIndex()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 178
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getDropoutVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0xf

    .line 179
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getHumidity()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x10

    .line 180
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getRatedChargingVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x11

    .line 181
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getRatedChargingCurrent()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x12

    .line 182
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getRatedDischargeCurrent()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x13

    .line 183
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getRatedDischargePower()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x14

    .line 184
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getEquilibriumStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x15

    .line 185
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getChargeSwitch()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 186
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getDischargeSwitch()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    .line 187
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getProtectStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 189
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTemperatures()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x18

    .line 191
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 194
    :cond_3
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getVoltageSeries()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const/16 v0, 0x19

    .line 196
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {p0, p1, p2}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)V
    .locals 4

    .line 102
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 104
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    .line 108
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTimeStamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTimeDateDec()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 112
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 115
    :cond_1
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 117
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x5

    .line 119
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getSoc()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 120
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getSurplusCapacity()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/4 v0, 0x7

    .line 121
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTotalVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x8

    .line 122
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getElectricity()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x9

    .line 123
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getPower()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0xa

    .line 124
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getCeilingVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0xb

    .line 125
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getMinimumVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0xc

    .line 126
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getAvgVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0xd

    .line 127
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getCycleIndex()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 128
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getDropoutVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0xf

    .line 129
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getHumidity()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x10

    .line 130
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getRatedChargingVoltage()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x11

    .line 131
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getRatedChargingCurrent()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x12

    .line 132
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getRatedDischargeCurrent()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x13

    .line 133
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getRatedDischargePower()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x14

    .line 134
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getEquilibriumStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x15

    .line 135
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getChargeSwitch()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 136
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getDischargeSwitch()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    .line 137
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getProtectStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 139
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTemperatures()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x18

    .line 141
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 144
    :cond_3
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getVoltageSeries()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const/16 v0, 0x19

    .line 146
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {p0, p1, p2}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)V

    return-void
.end method

.method public getKey(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {p0, p1}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->getKey(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)Z
    .locals 0

    .line 283
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {p0, p1}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->hasKey(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;
    .locals 30

    move-object/from16 v0, p1

    .line 207
    new-instance v27, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    add-int/lit8 v1, p2, 0x0

    .line 208
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 209
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v2, p2, 0x2

    .line 210
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v6, v2

    :goto_1
    add-int/lit8 v2, p2, 0x3

    .line 211
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_2
    add-int/lit8 v2, p2, 0x4

    .line 212
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v2, p2, 0x5

    .line 213
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    add-int/lit8 v2, p2, 0x6

    .line 214
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    add-int/lit8 v2, p2, 0x7

    .line 215
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    add-int/lit8 v2, p2, 0x8

    .line 216
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    add-int/lit8 v2, p2, 0x9

    .line 217
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    add-int/lit8 v2, p2, 0xa

    .line 218
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    add-int/lit8 v2, p2, 0xb

    .line 219
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    add-int/lit8 v2, p2, 0xc

    .line 220
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    add-int/lit8 v2, p2, 0xd

    .line 221
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v17

    add-int/lit8 v2, p2, 0xe

    .line 222
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v18

    add-int/lit8 v2, p2, 0xf

    .line 223
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v19

    add-int/lit8 v2, p2, 0x10

    .line 224
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v20

    add-int/lit8 v2, p2, 0x11

    .line 225
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    add-int/lit8 v2, p2, 0x12

    .line 226
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    add-int/lit8 v2, p2, 0x13

    .line 227
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    add-int/lit8 v2, p2, 0x14

    .line 228
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    add-int/lit8 v2, p2, 0x15

    .line 229
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    add-int/lit8 v2, p2, 0x16

    .line 230
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    add-int/lit8 v2, p2, 0x17

    .line 231
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_3

    move-object/from16 v28, v3

    goto :goto_3

    :cond_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v2

    :goto_3
    add-int/lit8 v2, p2, 0x18

    .line 232
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_4

    move-object/from16 v29, v3

    goto :goto_4

    :cond_4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    :goto_4
    move-object/from16 v0, v27

    move-wide v2, v4

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move v13, v15

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v26

    move-object/from16 v25, v28

    move-object/from16 v26, v29

    invoke-direct/range {v0 .. v26}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;-><init>(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;IFFFFFFFIFFFFFFIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v27
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->readEntity(Landroid/database/Cursor;I)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 239
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 240
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTimeStamp(J)V

    add-int/lit8 v0, p3, 0x2

    .line 241
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTimeDateDec(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x3

    .line 242
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setBleMacAddress(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 243
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setSoc(I)V

    add-int/lit8 v0, p3, 0x5

    .line 244
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setSurplusCapacity(F)V

    add-int/lit8 v0, p3, 0x6

    .line 245
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTotalVoltage(F)V

    add-int/lit8 v0, p3, 0x7

    .line 246
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setElectricity(F)V

    add-int/lit8 v0, p3, 0x8

    .line 247
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setPower(F)V

    add-int/lit8 v0, p3, 0x9

    .line 248
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setCeilingVoltage(F)V

    add-int/lit8 v0, p3, 0xa

    .line 249
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setMinimumVoltage(F)V

    add-int/lit8 v0, p3, 0xb

    .line 250
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setAvgVoltage(F)V

    add-int/lit8 v0, p3, 0xc

    .line 251
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setCycleIndex(I)V

    add-int/lit8 v0, p3, 0xd

    .line 252
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setDropoutVoltage(F)V

    add-int/lit8 v0, p3, 0xe

    .line 253
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setHumidity(F)V

    add-int/lit8 v0, p3, 0xf

    .line 254
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setRatedChargingVoltage(F)V

    add-int/lit8 v0, p3, 0x10

    .line 255
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setRatedChargingCurrent(F)V

    add-int/lit8 v0, p3, 0x11

    .line 256
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setRatedDischargeCurrent(F)V

    add-int/lit8 v0, p3, 0x12

    .line 257
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setRatedDischargePower(F)V

    add-int/lit8 v0, p3, 0x13

    .line 258
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setEquilibriumStatus(I)V

    add-int/lit8 v0, p3, 0x14

    .line 259
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setChargeSwitch(I)V

    add-int/lit8 v0, p3, 0x15

    .line 260
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setDischargeSwitch(I)V

    add-int/lit8 v0, p3, 0x16

    .line 261
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setProtectStatus(I)V

    add-int/lit8 v0, p3, 0x17

    .line 262
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTemperatures(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x18

    .line 263
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {p2, v2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setVoltageSeries(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->readEntity(Landroid/database/Cursor;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 202
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;J)Ljava/lang/Long;
    .locals 1

    .line 268
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setId(Ljava/lang/Long;)V

    .line 269
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->updateKeyAfterInsert(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
