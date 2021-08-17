import xml.etree.cElementTree as ET

root = ET.Element("sorting_game")
ET.SubElement(root, "char").text = "A"
ET.SubElement(root, "char").text = "B"
ET.SubElement(root, "char").text = "C"
ET.SubElement(root, "char").text = "D"
ET.SubElement(root, "char").text = "E"
ET.SubElement(root, "char").text = "F"
ET.SubElement(root, "char").text = "G"
ET.SubElement(root, "char").text = "H"
ET.SubElement(root, "char").text = "I"
ET.SubElement(root, "char").text = "J"
ET.SubElement(root, "char").text = "K"
ET.SubElement(root, "char").text = " "

tree = ET.ElementTree(root)
tree.write("save.xml")
