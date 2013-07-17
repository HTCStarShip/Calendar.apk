.class Lcom/htc/calendar/AgendaAdapter$ViewHolder;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field calendarColor:I

.field colorLabel:Lcom/htc/widget/HtcListItemColorBar;

.field listItem:Lcom/htc/widget/HtcListItem;

.field overLayColor:I

.field qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field title:Lcom/htc/widget/HtcListItem2LineText;

.field today:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 80
    return-void
.end method
