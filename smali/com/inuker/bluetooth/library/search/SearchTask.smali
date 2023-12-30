.class public Lcom/inuker/bluetooth/library/search/SearchTask;
.super Ljava/lang/Object;
.source "SearchTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/inuker/bluetooth/library/search/SearchTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private searchDuration:I

.field private searchType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/inuker/bluetooth/library/search/SearchTask$1;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/search/SearchTask$1;-><init>()V

    sput-object v0, Lcom/inuker/bluetooth/library/search/SearchTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inuker/bluetooth/library/search/SearchTask;->searchType:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/inuker/bluetooth/library/search/SearchTask;->searchDuration:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSearchDuration()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/inuker/bluetooth/library/search/SearchTask;->searchDuration:I

    return v0
.end method

.method public getSearchType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/inuker/bluetooth/library/search/SearchTask;->searchType:I

    return v0
.end method

.method public setSearchDuration(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/inuker/bluetooth/library/search/SearchTask;->searchDuration:I

    return-void
.end method

.method public setSearchType(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/inuker/bluetooth/library/search/SearchTask;->searchType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 21
    iget p2, p0, Lcom/inuker/bluetooth/library/search/SearchTask;->searchType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget p2, p0, Lcom/inuker/bluetooth/library/search/SearchTask;->searchDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
