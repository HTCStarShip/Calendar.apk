.class public Lcom/htc/calendar/DayView;
.super Lcom/htc/calendar/CalendarView;
.source "DayView.java"


# static fields
.field private static final CELL_MARGIN:I = 0x8


# direct methods
.method public constructor <init>(Lcom/htc/calendar/CalendarActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarView;-><init>(Lcom/htc/calendar/CalendarActivity;)V

    .line 29
    invoke-direct {p0}, Lcom/htc/calendar/DayView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/htc/calendar/CalendarView;->mDrawTextInEventRect:Z

    .line 34
    iput v0, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    .line 35
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventGeometry;->setCellMargin(I)V

    .line 36
    return-void
.end method
