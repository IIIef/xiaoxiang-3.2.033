.class final Lcom/inuker/bluetooth/library/search/SearchResult$1;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/search/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/inuker/bluetooth/library/search/SearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/inuker/bluetooth/library/search/SearchResult;
    .locals 1

    .line 66
    new-instance v0, Lcom/inuker/bluetooth/library/search/SearchResult;

    invoke-direct {v0, p1}, Lcom/inuker/bluetooth/library/search/SearchResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/search/SearchResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/inuker/bluetooth/library/search/SearchResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/inuker/bluetooth/library/search/SearchResult;
    .locals 0

    .line 70
    new-array p1, p1, [Lcom/inuker/bluetooth/library/search/SearchResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/search/SearchResult$1;->newArray(I)[Lcom/inuker/bluetooth/library/search/SearchResult;

    move-result-object p1

    return-object p1
.end method
