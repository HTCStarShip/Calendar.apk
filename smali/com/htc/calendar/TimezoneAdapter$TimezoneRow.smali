.class public Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
.super Ljava/lang/Object;
.source "TimezoneAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/TimezoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimezoneRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# instance fields
.field public final mDisplayName:Ljava/lang/String;

.field private final mGmtDisplayName:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field public final mOffset:I

.field private mOnlyGmtDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "id"
    .parameter "displayName"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 77
    .local v4, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 78
    .local v2, offset:I
    iput v2, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    .line 79
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 80
    .local v3, p:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v1, name:Ljava/lang/StringBuilder;
    const-string v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    if-gez v2, :cond_1

    .line 84
    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :goto_0
    int-to-long v5, v3

    const-wide/32 v7, 0x36ee80

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    const v5, 0xea60

    div-int v0, v3, v5

    .line 93
    .local v0, min:I
    rem-int/lit8 v0, v0, 0x3c

    .line 95
    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 96
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOnlyGmtDisplayName:Ljava/lang/String;

    .line 102
    const/4 v5, 0x0

    const-string v6, "("

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    .line 106
    return-void

    .line 86
    .end local v0           #min:I
    :cond_1
    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 163
    iget v0, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ne v0, v1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->compareTo(Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-ne p0, p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 138
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;

    .line 141
    .local v0, other:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v3, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 142
    iget-object v3, v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 143
    goto :goto_0

    .line 145
    :cond_4
    iget-object v3, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 146
    goto :goto_0

    .line 148
    :cond_5
    iget-object v3, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 149
    iget-object v3, v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 150
    goto :goto_0

    .line 152
    :cond_6
    iget-object v3, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_7
    iget v3, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v4, v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 156
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 121
    const/16 v0, 0x1f

    .line 122
    .local v0, prime:I
    const/4 v1, 0x1

    .line 123
    .local v1, result:I
    iget-object v2, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 124
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 125
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    add-int v1, v2, v3

    .line 126
    return v1

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toOnlyGMTString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mOnlyGmtDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    return-object v0
.end method
