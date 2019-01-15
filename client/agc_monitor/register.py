from PySide2.QtWidgets import QWidget, QFrame, QHBoxLayout, QLineEdit, QLabel
from PySide2.QtGui import QFont, QColor
from PySide2.QtCore import Qt
from indicator import Indicator

class Register(QWidget):
    def __init__(self, parent, name, has_parity, color):
        super().__init__(parent)
        self.has_parity = has_parity
        self.indicators = []
        self.parity_inds = []

        # Set up the UI
        self._setup_ui(name, color)

    def set_value(self, x):
        # Toggle each of the 16 value indicators to match the new value
        for i in range(0, len(self.indicators)):
            self.indicators[i].set_on((x & (1 << i)) != 0)

        # Update the octal decoding of the indicators. Bit 15 is ignored
        # in the actual value, so mask it out and shift down bit 16.
        value = ((x & 0o100000) >> 1) | (x & 0o37777)
        self.value_box.setText('%05o' % value)

        # Instead we will convey overflow information with text color.
        # Positive overflow is red, and negative overflow is purple.
        sign1 = (x & 0o100000) != 0
        sign2 = (x & 0o040000) != 0
        if (not sign1 and sign2):
            self.value_box.setStyleSheet('color: red;')
        elif (sign1 and not sign2):
            self.value_box.setStyleSheet('color: purple;')
        else:
            self.value_box.setStyleSheet('color: black;')

    def _setup_ui(self, name, color):
        # Set up the overall horizontal layout
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        # Construct a frame to hold the 16 indicators
        bit_frame = QFrame(self)
        bit_layout = QHBoxLayout(bit_frame)
        bit_layout.setSpacing(1)
        bit_layout.setMargin(0)
        bit_frame.setLayout(bit_layout)
        bit_frame.setFrameStyle(QFrame.StyledPanel | QFrame.Raised)

        layout.addWidget(bit_frame)

        # Add the 16 bit indicators to the frame, from 16 to 1.
        for i in range(16, 0, -1):
            ind = Indicator(bit_frame, color)
            ind.setMinimumSize(20, 32)
            bit_layout.addWidget(ind)
            self.indicators.insert(0, ind)

            # Add separators between every group of 3 bits (except between
            # bits 15 and 16).
            if (i < 16) and (i > 1) and ((i % 3) == 1):
                sep = QFrame(bit_frame)
                sep.setFrameStyle(QFrame.VLine | QFrame.Raised)
                bit_layout.addWidget(sep)

        # Add sensed and generated parity bits, if this register has them
        if self.has_parity:
            sep = QFrame(bit_frame)
            sep.setFrameStyle(QFrame.VLine | QFrame.Raised)
            bit_layout.addWidget(sep)

            for i in range(2, 0, -1):
                ind = Indicator(bit_frame, QColor(255,255,0))
                ind.setMinimumSize(20, 32)
                bit_layout.addWidget(ind)
                self.parity_inds.insert(0, ind)
            
        # Add a box to display the octal decoded value in
        self.value_box = QLineEdit()
        self.value_box.setMaximumSize(52, 32)
        self.value_box.setReadOnly(True)
        self.value_box.setAlignment(Qt.AlignCenter)
        self.value_box.setText('00000')

        font = QFont('Monospace')
        font.setStyleHint(QFont.TypeWriter)
        font.setPointSize(10)
        self.value_box.setFont(font)

        layout.addWidget(self.value_box)

        # Add a label showing the name of the register
        label = QLabel(name, self)
        font = label.font()
        font.setPointSize(14)
        font.setBold(True)
        label.setFont(font)
        label.setMinimumWidth(20)

        layout.addWidget(label)

        # If parity was not included, fill up the equivalent space
        if not self.has_parity:
            layout.addSpacing(45)