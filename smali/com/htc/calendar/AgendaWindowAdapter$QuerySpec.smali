.class Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field end:I

.field goToTime:Landroid/text/format/Time;

.field queryStartMillis:J

.field queryType:I

.field start:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "queryType"

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 216
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    if-ne p0, p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 238
    check-cast v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    .line 239
    .local v0, other:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    iget v3, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iget v4, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v5, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget v3, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    iget v4, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iget v4, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v1, v2

    .line 241
    goto :goto_0

    .line 243
    :cond_5
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_6

    .line 244
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v5, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 245
    goto :goto_0

    .line 248
    :cond_6
    iget-object v3, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_0

    move v1, v2

    .line 249
    goto :goto_0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    .line 220
    const/16 v2, 0x1f

    .line 221
    .local v2, prime:I
    const/4 v3, 0x1

    .line 222
    .local v3, result:I
    iget v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v4, 0x1f

    .line 223
    mul-int/lit8 v4, v3, 0x1f

    iget-wide v5, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v7, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 224
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    add-int v3, v4, v5

    .line 225
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    add-int v3, v4, v5

    .line 226
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 228
    .local v0, goToTimeMillis:J
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v9

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 230
    .end local v0           #goToTimeMillis:J
    :cond_0
    return v3
.end method
