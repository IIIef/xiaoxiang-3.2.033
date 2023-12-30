.class public interface abstract Lcom/inuker/bluetooth/library/IResponse;
.super Ljava/lang/Object;
.source "IResponse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/IResponse$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
