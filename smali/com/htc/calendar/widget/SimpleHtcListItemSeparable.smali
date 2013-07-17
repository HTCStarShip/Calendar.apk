.class public Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;
.super Ljava/lang/Object;
.source "SimpleHtcListItemSeparable.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# instance fields
.field protected mDrawOnThis:Z

.field private mId:J

.field protected mSeparateID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mId:J

    return-wide v0
.end method

.method public final getSeparateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mId:J

    .line 65
    return-void
.end method

.method public setSeparateID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSeparateID(Z)V
    .locals 0
    .parameter "drawOnThis"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 61
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 5
    .parameter "listitem"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 77
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    instance-of v4, p1, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 84
    check-cast v1, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    .line 85
    .local v1, nextTag:Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;
    invoke-virtual {v1}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, nextID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    iget-object v4, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_0

    .line 94
    :cond_4
    iget-object v4, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 96
    goto :goto_0

    .line 99
    :cond_5
    iget-object v4, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    :cond_7
    iget-object v4, p0, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 106
    goto :goto_0
.end method
