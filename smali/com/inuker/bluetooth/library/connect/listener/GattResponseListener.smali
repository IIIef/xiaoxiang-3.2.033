.class public interface abstract Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;
.super Ljava/lang/Object;
.source "GattResponseListener.java"


# static fields
.field public static final GATT_RESP_CHARACTER_READ:I = 0x2

.field public static final GATT_RESP_CHARACTER_WRITE:I = 0x3

.field public static final GATT_RESP_DESCRIPTOR_WRITE:I = 0x4

.field public static final GATT_RESP_DISCONNECT:I = 0x6

.field public static final GATT_RESP_READ_RSSI:I = 0x5

.field public static final GATT_RESP_SERVICE_DISCOVER:I = 0x1


# virtual methods
.method public abstract onConnectStatusChanged(Z)V
.end method
