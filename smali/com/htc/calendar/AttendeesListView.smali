.class public Lcom/htc/calendar/AttendeesListView;
.super Lcom/htc/widget/HtcListView;
.source "AttendeesListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttendeesListView"


# instance fields
.field private mAttendeeMode:Z

.field private mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

.field private mAttendeesLabelAdapter:Lcom/htc/calendar/AttendeesByLabelAdapter;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeeMode:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/htc/calendar/AttendeesListView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeeMode:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/htc/calendar/AttendeesListView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeeMode:Z

    .line 26
    invoke-direct {p0, p1}, Lcom/htc/calendar/AttendeesListView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const v2, -0xe1e1e2

    .line 35
    new-instance v0, Lcom/htc/calendar/AttendeesAdapter;

    const v1, 0x7f03002b

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/AttendeesAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    .line 36
    new-instance v0, Lcom/htc/calendar/AttendeesByLabelAdapter;

    iget-object v1, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/AttendeesByLabelAdapter;-><init>(Landroid/content/Context;Lcom/htc/calendar/AttendeesAdapter;)V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeesLabelAdapter:Lcom/htc/calendar/AttendeesByLabelAdapter;

    .line 38
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080700

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AttendeesListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0, v3}, Lcom/htc/calendar/AttendeesListView;->setTopBorderHeight(I)V

    .line 41
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/calendar/AttendeesListView;->setCacheColorHint(I)V

    .line 49
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, v2}, Lcom/htc/calendar/AttendeesListView;->setBackgroundColor(I)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/calendar/AttendeesListView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public setAttendeesAccountType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/AttendeesAdapter;->setAttendeesAccountType(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/calendar/AttendeesListView;->mCursor:Landroid/database/Cursor;

    .line 63
    iget-object v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeesLabelAdapter:Lcom/htc/calendar/AttendeesByLabelAdapter;

    iget-boolean v1, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeeMode:Z

    invoke-virtual {v0, p1, v1}, Lcom/htc/calendar/AttendeesByLabelAdapter;->calculateAttendees(Landroid/database/Cursor;Z)V

    .line 64
    iget-object v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/AttendeesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 66
    iget-object v0, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeesLabelAdapter:Lcom/htc/calendar/AttendeesByLabelAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AttendeesListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method

.method public setMode(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 52
    const-string v0, "AttendeesListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-boolean p1, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeeMode:Z

    .line 54
    const-string v0, "AttendeesListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mAttendeeMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/calendar/AttendeesListView;->mAttendeeMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
